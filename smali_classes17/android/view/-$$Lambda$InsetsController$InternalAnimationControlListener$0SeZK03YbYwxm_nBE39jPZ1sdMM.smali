.class public final synthetic Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;

    invoke-direct {v0}, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;->INSTANCE:Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$0SeZK03YbYwxm_nBE39jPZ1sdMM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getAlphaInterpolator$2(F)F

    move-result p1

    return p1
.end method
