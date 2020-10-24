.class public abstract Lmiuix/animation/property/ViewProperty;
.super Lmiuix/animation/property/FloatProperty;
.source ""


# static fields
.field public static final ALPHA:Lmiuix/animation/property/ViewProperty;

.field public static final AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

.field public static final BACKGROUND:Lmiuix/animation/property/ViewProperty;

.field public static final FOREGROUND:Lmiuix/animation/property/ViewProperty;

.field public static final HEIGHT:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION_X:Lmiuix/animation/property/ViewProperty;

.field public static final ROTATION_Y:Lmiuix/animation/property/ViewProperty;

.field public static final SCALE_X:Lmiuix/animation/property/ViewProperty;

.field public static final SCALE_Y:Lmiuix/animation/property/ViewProperty;

.field public static final SCROLL_X:Lmiuix/animation/property/ViewProperty;

.field public static final SCROLL_Y:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

.field public static final TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

.field public static final WIDTH:Lmiuix/animation/property/ViewProperty;

.field public static final X:Lmiuix/animation/property/ViewProperty;

.field public static final Y:Lmiuix/animation/property/ViewProperty;

.field public static final Z:Lmiuix/animation/property/ViewProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiuix/animation/property/ViewProperty$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->Z:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$12;

    const-string v1, "height"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$13;

    const-string v1, "width"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$14;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$15;

    const-string v1, "autoAlpha"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$16;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$16;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$17;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$18;

    const-string v1, "deprecated_foreground"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$18;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->FOREGROUND:Lmiuix/animation/property/ViewProperty;

    new-instance v0, Lmiuix/animation/property/ViewProperty$19;

    const-string v1, "deprecated_background"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ViewProperty$19;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/property/ViewProperty;->BACKGROUND:Lmiuix/animation/property/ViewProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lmiuix/animation/property/ViewProperty;->isInInitLayout(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static isInInitLayout(Landroid/view/View;)Z
    .locals 1

    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewProperty{mPropertyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
