.class public final synthetic Lcom/android/camera/fragment/top/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/top/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/top/h;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/h;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/top/h;->INSTANCE:Lcom/android/camera/fragment/top/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->a(Lcom/android/camera/ui/ToggleSwitch;Z)V

    return-void
.end method
