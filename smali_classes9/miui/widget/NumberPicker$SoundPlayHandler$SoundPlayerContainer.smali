.class Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INTERVAL:J = 0x32L


# instance fields
.field private mPrevPlayTime:J

.field private mRefs:Ljava/util/Set;

.field private mSoundId:I

.field private mSoundPlayer:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/ArraySet;

    invoke-direct {v0}, Lmiui/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NumberPicker$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>()V

    return-void
.end method


# virtual methods
.method init(I)V
    .locals 4

    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$raw;->numberpicker_value_change:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    :cond_0
    iget-object p0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method play()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x32

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget v3, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundId:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    iput-wide v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mPrevPlayTime:J

    :cond_0
    return-void
.end method

.method release(I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mRefs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->mSoundPlayer:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
