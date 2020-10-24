.class Lcom/android/camera/fragment/FragmentMainContent$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentMainContent$1;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1$2;->this$1:Lcom/android/camera/fragment/FragmentMainContent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "FragmentMainContent"

    const-string v0, "on cancel click."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
