.class public Lcom/arcsoft/avatar2/emoticon/EmoInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "EmoInfo"


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/FileDescriptor;

.field private f:I

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Ljava/nio/ByteBuffer;

.field private l:[B

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;

.field private o:Landroid/util/Size;

.field private p:I

.field private q:F

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    iput v2, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    const/16 v0, 0x19

    iput v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getEmoExtraInfoList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getEmoImageSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    return-object p0
.end method

.method public getEmoMaxCount()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    return p0
.end method

.method public getEmoName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->e:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getScaleLevel()F
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    return p0
.end method

.method public getSelect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    return p0
.end method

.method public getThumbBgGroundPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbForGroundPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->r:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbFrameIndex()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    return p0
.end method

.method public getThumbnail()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getThumbnailData()[B
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    return-object p0
.end method

.method public getTranslationX()F
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    return p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public isMultipleBG()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    return p0
.end method

.method public isNeedFaceColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    return p0
.end method

.method public needFaceColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->i:Z

    return-void
.end method

.method public setEmoExtraInfoList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public setEmoImageSize(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->o:Landroid/util/Size;

    return-void
.end method

.method public setEmoMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    return-void
.end method

.method public setEmoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->e:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setMultipleBG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->j:Z

    return-void
.end method

.method public setScaleLevel(F)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->q:F

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->b:Z

    return-void
.end method

.method public setThumbBgGroundPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public setThumbForGroundPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public setThumbFrameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->p:I

    return-void
.end method

.method public setThumbnail(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->k:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setThumbnailData([B)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->l:[B

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->g:F

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->h:F

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emoMaxCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->time:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", foreGroundPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->foreGroundPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tongueStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getTongueStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Orientations = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", LeftEyes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientationLeftEyes()[F

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RightEyes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientationRightEyes()[F

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ExpWeights = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->processInfo:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
