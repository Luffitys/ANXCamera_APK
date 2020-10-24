.class public Lcom/arcsoft/avatar/BackgroundInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESOLUTION_16_9:I = 0x2

.field public static final RESOLUTION_4_3:I = 0x1

.field public static final RESOLUTION_FULL_SIZE:I = 0x3

.field private static final a:Ljava/lang/String; = "background.xml"

.field private static final b:Ljava/lang/String; = "info"

.field private static final c:Ljava/lang/String; = "name"

.field private static final d:Ljava/lang/String; = "count"

.field private static final e:Ljava/lang/String; = "delay"

.field private static final f:Ljava/lang/String; = "crop"

.field private static final g:Ljava/lang/String; = "cropx"


# instance fields
.field private h:I

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:[I

.field private n:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->l:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->m:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->n:[I

    return-void
.end method

.method public static getXMLCountTag()Ljava/lang/String;
    .locals 1

    const-string v0, "count"

    return-object v0
.end method

.method public static getXMLCrop16_9_XY()Ljava/lang/String;
    .locals 1

    const-string v0, "cropx"

    return-object v0
.end method

.method public static getXMLCrop4_3_XY()Ljava/lang/String;
    .locals 1

    const-string v0, "crop"

    return-object v0
.end method

.method public static getXMLDelayTag()Ljava/lang/String;
    .locals 1

    const-string v0, "delay"

    return-object v0
.end method

.method public static getXMLInfoTag()Ljava/lang/String;
    .locals 1

    const-string v0, "info"

    return-object v0
.end method

.method public static getXMLName()Ljava/lang/String;
    .locals 1

    const-string v0, "background.xml"

    return-object v0
.end method

.method public static getXMLNameTag()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method


# virtual methods
.method public getBackGroundPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->k:I

    return p0
.end method

.method public getCrop16_9_XY()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->n:[I

    return-object p0
.end method

.method public getCrop4_3_XY()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->m:[I

    return-object p0
.end method

.method public getDelayMillis()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->h:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionMode()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/BackgroundInfo;->l:I

    return p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->k:I

    return-void
.end method

.method public setCrop16_9_XY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->n:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCrop4_3_XY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->m:[I

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->h:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setResolutionMode(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->l:I

    return-void
.end method

.method public setResolution_FullSize_PathList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/BackgroundInfo;->i:Ljava/util/ArrayList;

    return-void
.end method
