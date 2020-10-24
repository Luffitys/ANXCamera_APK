.class public Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final PRE_CARTOON:Ljava/lang/String; = "pre_cartoon"

.field public static final PRE_HUMAN:Ljava/lang/String; = "pre_human"


# instance fields
.field private mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

.field public mAvatarTemplatePath:Ljava/lang/String;

.field public mConfigPath:Ljava/lang/String;

.field public mData:[B

.field private mDefaultFrame:I

.field public mDirectoryName:J

.field private mFrame:I

.field private mIsNeedAnim:Z

.field private mIsPreHuman:Z

.field public mName:I

.field public mName2:I

.field public mPackPath:Ljava/lang/String;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mThumbnailUrl2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mDefaultFrame:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsNeedAnim:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsPreHuman:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)I
    .locals 3

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mDirectoryName:J

    iget-wide p0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mDirectoryName:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->compareTo(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;)I

    move-result p0

    return p0
.end method

.method public getAvatarConfigInfoArrayList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDefaultFrame()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mDefaultFrame:I

    return p0
.end method

.method public getFrame()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    return p0
.end method

.method public isIsNeedAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsNeedAnim:Z

    return p0
.end method

.method public isIsPreHuman()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsPreHuman:Z

    return p0
.end method

.method public nextFrame()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    :cond_1
    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    return p0
.end method

.method public setAvatarConfigInfoArrayList(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDefaultFrame(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mDefaultFrame:I

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mFrame:I

    return-void
.end method

.method public setIsNeedAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsNeedAnim:Z

    return-void
.end method

.method public setIsPreHuman(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mIsPreHuman:Z

    return-void
.end method
