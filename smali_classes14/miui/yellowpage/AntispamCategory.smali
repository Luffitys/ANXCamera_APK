.class public Lmiui/yellowpage/AntispamCategory;
.super Ljava/lang/Object;
.source "AntispamCategory.java"


# instance fields
.field private mCustomName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mId:I

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNames:Ljava/lang/String;

.field private mOrder:I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    iput-object p2, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    iput p3, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    iput-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    goto :goto_41

    :cond_14
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v7, v5, v7

    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    if-nez v8, :cond_39

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    :cond_39
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_41
    :goto_41
    iput-object p4, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    iput p5, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCategoryAllNames()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    return-object v0

    :cond_9
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    iget-object v1, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getCategoryType()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    return v0
.end method

.method public isUserCustom()Z
    .registers 3

    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
