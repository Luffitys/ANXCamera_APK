.class Lmiui/view/VolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedProgressRes:I

.field private icon:Landroid/widget/ImageButton;

.field private iconsMapKey:I

.field private important:Z

.field private initIconsMapKey:I

.field private lastLevel:I

.field private slider:Lmiui/widget/SeekBar;

.field private space:Landroid/view/View;

.field private ss:Lmiui/view/VolumeDialog$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/VolumeDialog$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/view/VolumeDialog$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$1002(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1102(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1400(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$1402(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object v0
.end method

.method static synthetic access$2102(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;

    return-object p1
.end method

.method static synthetic access$2302(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I

    return p1
.end method

.method static synthetic access$2700(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I

    return v0
.end method

.method static synthetic access$2702(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->cachedProgressRes:I

    return p1
.end method

.method static synthetic access$2800(Lmiui/view/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$2802(Lmiui/view/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$2900(Lmiui/view/VolumeDialog$VolumeRow;)J
    .registers 3

    iget-wide v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$2902(Lmiui/view/VolumeDialog$VolumeRow;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$3000(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$3002(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$3100(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic access$3102(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic access$400(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$702(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$800(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return v0
.end method

.method static synthetic access$802(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I

    return p1
.end method

.method static synthetic access$900(Lmiui/view/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return v0
.end method

.method static synthetic access$902(Lmiui/view/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I

    return p1
.end method
