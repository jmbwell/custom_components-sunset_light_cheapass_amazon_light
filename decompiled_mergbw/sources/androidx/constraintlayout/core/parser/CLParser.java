package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.fastjson.asm.Opcodes;
/* loaded from: classes.dex */
public class CLParser {
    static boolean sDebug = false;
    private String mContent;
    private boolean mHasComment = false;
    private int mLineNumber;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    public CLObject parse() throws CLParsingException {
        char c2;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i = 1;
        this.mLineNumber = 1;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            }
            char c3 = charArray[i2];
            if (c3 == '{') {
                break;
            }
            if (c3 == '\n') {
                this.mLineNumber++;
            }
            i2++;
        }
        if (i2 == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject allocate = CLObject.allocate(charArray);
        allocate.setLine(this.mLineNumber);
        allocate.setStart(i2);
        int i3 = i2 + 1;
        CLObject cLObject = allocate;
        while (i3 < length) {
            char c4 = charArray[i3];
            if (c4 == '\n') {
                this.mLineNumber += i;
            }
            if (this.mHasComment) {
                if (c4 == '\n') {
                    this.mHasComment = z;
                } else {
                    continue;
                    i3++;
                    i = 1;
                    z = false;
                }
            }
            if (cLObject == null) {
                break;
            }
            if (cLObject.isDone()) {
                cLObject = getNextJsonElement(i3, c4, cLObject, charArray);
            } else if (cLObject instanceof CLObject) {
                if (c4 == '}') {
                    cLObject.setEnd(i3 - 1);
                } else {
                    cLObject = getNextJsonElement(i3, c4, cLObject, charArray);
                }
            } else if (!(cLObject instanceof CLArray)) {
                boolean z2 = cLObject instanceof CLString;
                if (z2) {
                    if (charArray[(int) cLObject.mStart] == c4) {
                        cLObject.setStart(cLObject.mStart + 1);
                        cLObject.setEnd(i3 - 1);
                    }
                } else {
                    if (cLObject instanceof CLToken) {
                        CLToken cLToken = (CLToken) cLObject;
                        if (!cLToken.validate(c4, i3)) {
                            throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                        }
                    }
                    if (((cLObject instanceof CLKey) || z2) && (((c2 = charArray[(int) cLObject.mStart]) == '\'' || c2 == '\"') && c2 == c4)) {
                        cLObject.setStart(cLObject.mStart + 1);
                        cLObject.setEnd(i3 - 1);
                    }
                    if (!cLObject.isDone() && (c4 == '}' || c4 == ']' || c4 == ',' || c4 == ' ' || c4 == '\t' || c4 == '\r' || c4 == '\n' || c4 == ':')) {
                        long j = i3 - 1;
                        cLObject.setEnd(j);
                        if (c4 == '}' || c4 == ']') {
                            cLObject = cLObject.getContainer();
                            cLObject.setEnd(j);
                            if (cLObject instanceof CLKey) {
                                cLObject = cLObject.getContainer();
                                cLObject.setEnd(j);
                            }
                        }
                    }
                }
            } else if (c4 == ']') {
                cLObject.setEnd(i3 - 1);
            } else {
                cLObject = getNextJsonElement(i3, c4, cLObject, charArray);
            }
            if (cLObject.isDone() && (!(cLObject instanceof CLKey) || ((CLKey) cLObject).mElements.size() > 0)) {
                cLObject = cLObject.getContainer();
            }
            i3++;
            i = 1;
            z = false;
        }
        while (cLObject != null && !cLObject.isDone()) {
            if (cLObject instanceof CLString) {
                cLObject.setStart(((int) cLObject.mStart) + 1);
            }
            cLObject.setEnd(length - 1);
            cLObject = cLObject.getContainer();
        }
        if (sDebug) {
            System.out.println("Root: " + allocate.toJSON());
        }
        return allocate;
    }

    private CLElement getNextJsonElement(int i, char c2, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\r' || c2 == ' ') {
            return cLElement;
        }
        if (c2 == '\"' || c2 == '\'') {
            if (cLElement instanceof CLObject) {
                return createElement(cLElement, i, TYPE.KEY, true, cArr);
            }
            return createElement(cLElement, i, TYPE.STRING, true, cArr);
        } else if (c2 == '[') {
            return createElement(cLElement, i, TYPE.ARRAY, true, cArr);
        } else {
            if (c2 != ']') {
                if (c2 == '{') {
                    return createElement(cLElement, i, TYPE.OBJECT, true, cArr);
                }
                if (c2 != '}') {
                    switch (c2) {
                        case '+':
                        case '-':
                        case '.':
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                        case '6':
                        case '7':
                        case Opcodes.FSTORE /* 56 */:
                        case Opcodes.DSTORE /* 57 */:
                            return createElement(cLElement, i, TYPE.NUMBER, true, cArr);
                        case ',':
                        case Opcodes.ASTORE /* 58 */:
                            return cLElement;
                        case '/':
                            int i2 = i + 1;
                            if (i2 >= cArr.length || cArr[i2] != '/') {
                                return cLElement;
                            }
                            this.mHasComment = true;
                            return cLElement;
                        default:
                            if ((cLElement instanceof CLContainer) && !(cLElement instanceof CLObject)) {
                                CLElement createElement = createElement(cLElement, i, TYPE.TOKEN, true, cArr);
                                CLToken cLToken = (CLToken) createElement;
                                if (cLToken.validate(c2, i)) {
                                    return createElement;
                                }
                                throw new CLParsingException("incorrect token <" + c2 + "> at line " + this.mLineNumber, cLToken);
                            }
                            return createElement(cLElement, i, TYPE.KEY, true, cArr);
                    }
                }
            }
            cLElement.setEnd(i - 1);
            CLElement container = cLElement.getContainer();
            container.setEnd(i);
            return container;
        }
    }

    private CLElement createElement(CLElement cLElement, int i, TYPE type, boolean z, char[] cArr) {
        CLElement allocate;
        if (sDebug) {
            System.out.println("CREATE " + type + " at " + cArr[i]);
        }
        switch (type.ordinal()) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i++;
                break;
            case 3:
                allocate = CLNumber.allocate(cArr);
                break;
            case 4:
                allocate = CLString.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.mLineNumber);
        if (z) {
            allocate.setStart(i);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }
}
