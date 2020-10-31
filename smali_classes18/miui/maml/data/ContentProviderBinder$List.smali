.class Lmiui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    const-string v0, "maxCount"

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    iput-object p2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    const-string v1, "ContentProviderBinder"

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ListScreenElement;

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to find list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [I

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_42
    array-length v6, v3

    if-ge v5, v6, :cond_81

    :try_start_45
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v6, v6, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_53} :catch_57

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :catch_57
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal column:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v8, v8, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_81
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v5, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v1, v5, :cond_8e

    iget v1, p0, Lmiui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    :cond_8e
    const/4 v5, 0x0

    :goto_8f
    if-ge v5, v1, :cond_11c

    const/4 v6, 0x0

    :goto_92
    if-ge v6, v2, :cond_110

    const/4 v7, 0x0

    aput-object v7, v4, v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    aget v8, v3, v6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_10d

    sget-object v9, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v10, v7, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x5

    if-eq v9, v10, :cond_107

    const/4 v10, 0x6

    if-eq v9, v10, :cond_f8

    sget-object v9, Lmiui/maml/data/ContentProviderBinder$2;->$SwitchMap$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v10, v7, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_ed

    const/4 v10, 0x2

    if-eq v9, v10, :cond_e2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_d7

    const/4 v10, 0x4

    if-eq v9, v10, :cond_cc

    goto :goto_10d

    :cond_cc
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v6

    goto :goto_10d

    :cond_d7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    goto :goto_10d

    :cond_e2
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v4, v6

    goto :goto_10d

    :cond_ed
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v4, v6

    goto :goto_10d

    :cond_f8
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-eqz v9, :cond_10d

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v4, v6

    goto :goto_10d

    :cond_107
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    :cond_10d
    :goto_10d
    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    :cond_110
    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v6, v4}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8f

    :cond_11c
    return-void
.end method
