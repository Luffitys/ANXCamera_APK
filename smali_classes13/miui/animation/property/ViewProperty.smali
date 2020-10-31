.class public abstract Lmiui/animation/property/ViewProperty;
.super Lmiui/animation/property/FloatProperty;
.source "ViewProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lmiui/animation/property/ViewProperty;

.field public static final AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

.field public static final BACKGROUND:Lmiui/animation/property/ViewProperty;

.field public static final FOREGROUND:Lmiui/animation/property/ViewProperty;

.field public static final HEIGHT:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION_X:Lmiui/animation/property/ViewProperty;

.field public static final ROTATION_Y:Lmiui/animation/property/ViewProperty;

.field public static final SCALE_X:Lmiui/animation/property/ViewProperty;

.field public static final SCALE_Y:Lmiui/animation/property/ViewProperty;

.field public static final SCROLL_X:Lmiui/animation/property/ViewProperty;

.field public static final SCROLL_Y:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_X:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

.field public static final TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

.field public static final VISIBILITY:Lmiui/animation/property/ViewProperty;

.field public static final WIDTH:Lmiui/animation/property/ViewProperty;

.field public static final X:Lmiui/animation/property/ViewProperty;

.field public static final Y:Lmiui/animation/property/ViewProperty;

.field public static final Z:Lmiui/animation/property/ViewProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/animation/property/ViewProperty$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->TRANSLATION_Z:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ROTATION_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->Z:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$12;

    const-string v1, "height"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$13;

    const-string v1, "width"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$14;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->ALPHA:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$15;

    const-string v1, "autoAlpha"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->AUTO_ALPHA:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$16;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$16;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_X:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$17;

    const-string v1, "visibility"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->VISIBILITY:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$18;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$18;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->SCROLL_Y:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$19;

    const-string v1, "deprecated_foreground"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$19;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->FOREGROUND:Lmiui/animation/property/ViewProperty;

    new-instance v0, Lmiui/animation/property/ViewProperty$20;

    const-string v1, "deprecated_background"

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewProperty$20;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/animation/property/ViewProperty;->BACKGROUND:Lmiui/animation/property/ViewProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Z
    .registers 2

    invoke-static {p0}, Lmiui/animation/property/ViewProperty;->isInInitLayout(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private static isInInitLayout(Landroid/view/View;)Z
    .registers 2

    const v0, 0x100b0004

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewProperty{mPropertyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/property/ViewProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
