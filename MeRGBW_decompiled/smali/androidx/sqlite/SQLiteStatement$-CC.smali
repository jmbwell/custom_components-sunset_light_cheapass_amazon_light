.class public final synthetic Landroidx/sqlite/SQLiteStatement$-CC;
.super Ljava/lang/Object;
.source "SQLiteStatement.kt"


# direct methods
.method public static $default$bindBoolean(Landroidx/sqlite/SQLiteStatement;IZ)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 0
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 82
    :goto_0
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public static $default$bindFloat(Landroidx/sqlite/SQLiteStatement;IF)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 0
    float-to-double v0, p2

    .line 54
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public static $default$bindInt(Landroidx/sqlite/SQLiteStatement;II)V
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 0
    int-to-long v0, p2

    .line 72
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public static $default$getBoolean(Landroidx/sqlite/SQLiteStatement;I)Z
    .locals 4
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 151
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static $default$getColumnNames(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;
    .locals 4
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 191
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static $default$getFloat(Landroidx/sqlite/SQLiteStatement;I)F
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 123
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public static $default$getInt(Landroidx/sqlite/SQLiteStatement;I)I
    .locals 2
    .param p0, "_this"    # Landroidx/sqlite/SQLiteStatement;

    .line 141
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method
