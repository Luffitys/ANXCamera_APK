.class public final synthetic Lcom/android/camera/ui/zoom/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/ui/zoom/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/ui/zoom/a;

    invoke-direct {v0}, Lcom/android/camera/ui/zoom/a;-><init>()V

    sput-object v0, Lcom/android/camera/ui/zoom/a;->INSTANCE:Lcom/android/camera/ui/zoom/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->a(Landroid/animation/AnimatorSet;)V

    return-void
.end method
