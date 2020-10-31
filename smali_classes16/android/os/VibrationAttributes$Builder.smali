.class public final Landroid/os/VibrationAttributes$Builder;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mFlags:I

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/os/VibrationEffect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(Landroid/media/AudioAttributes;)V

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(Landroid/media/AudioAttributes;)V

    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;->applyHapticFeedbackHeuristics(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/VibrationAttributes;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz p1, :cond_27

    # getter for: Landroid/os/VibrationAttributes;->mUsage:I
    invoke-static {p1}, Landroid/os/VibrationAttributes;->access$100(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    # getter for: Landroid/os/VibrationAttributes;->mFlags:I
    invoke-static {p1}, Landroid/os/VibrationAttributes;->access$200(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    # getter for: Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;
    invoke-static {p1}, Landroid/os/VibrationAttributes;->access$300(Landroid/os/VibrationAttributes;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    :cond_27
    return-void
.end method

.method private applyHapticFeedbackHeuristics(Landroid/os/VibrationEffect;)V
    .registers 8

    if-eqz p1, :cond_48

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    const/16 v1, 0x12

    if-nez v0, :cond_32

    instance-of v0, p1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v3, 0x1

    if-eq v2, v3, :cond_30

    const/4 v3, 0x2

    if-eq v2, v3, :cond_30

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    const/4 v3, 0x4

    if-eq v2, v3, :cond_30

    const/4 v3, 0x5

    if-eq v2, v3, :cond_30

    const/16 v3, 0x15

    if-eq v2, v3, :cond_30

    const-string v2, "VibrationAttributes"

    const-string v3, "Unknown prebaked vibration effect, assuming it isn\'t haptic feedback"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_30
    iput v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v2

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    if-nez v0, :cond_48

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_48

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_48

    iput v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    :cond_48
    return-void
.end method

.method private setFlags(Landroid/media/AudioAttributes;)V
    .registers 3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    :cond_e
    return-void
.end method

.method private setUsage(Landroid/media/AudioAttributes;)V
    .registers 3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :pswitch_7
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_24

    :pswitch_b
    const/16 v0, 0x12

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_24

    :pswitch_10
    const/16 v0, 0x41

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_24

    :pswitch_15
    const/16 v0, 0x21

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_24

    :pswitch_1a
    const/16 v0, 0x31

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_24

    :pswitch_1f
    const/16 v0, 0x11

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    nop

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_10
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public build()Landroid/os/VibrationAttributes;
    .registers 6

    new-instance v0, Landroid/os/VibrationAttributes;

    iget v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iget v2, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    iget-object v3, p0, Landroid/os/VibrationAttributes$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/VibrationAttributes;-><init>(IILandroid/media/AudioAttributes;Landroid/os/VibrationAttributes$1;)V

    return-object v0
.end method

.method public replaceFlags(I)Landroid/os/VibrationAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setFlags(II)Landroid/os/VibrationAttributes$Builder;
    .registers 5

    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setUsage(I)Landroid/os/VibrationAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    return-object p0
.end method
