.class public final synthetic Landroidx/datastore/preferences/protobuf/Internal$FloatList$-CC;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method public static bridge synthetic $default$mutableCopyWithCapacity(Landroidx/datastore/preferences/protobuf/Internal$FloatList;I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .locals 0
    .param p0, "_this"    # Landroidx/datastore/preferences/protobuf/Internal$FloatList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1000
        }
        names = {
            "_this",
            "capacity"
        }
    .end annotation

    .line 687
    invoke-interface {p0, p1}, Landroidx/datastore/preferences/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method
