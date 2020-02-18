.class public final synthetic Lcom/android/camera/fragment/top/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/top/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/top/b;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/b;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/top/b;->INSTANCE:Lcom/android/camera/fragment/top/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/top/FragmentTopAlert;->Ja()V

    return-void
.end method
