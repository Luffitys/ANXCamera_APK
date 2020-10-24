.class Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

.field final synthetic val$featureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    iput-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;->val$featureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeBase;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase$1;->val$featureName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeBase;Ljava/lang/String;)V

    return-void
.end method
