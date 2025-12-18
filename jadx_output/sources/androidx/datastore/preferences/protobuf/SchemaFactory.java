package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> messageType);
}
