.class Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$1;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method
