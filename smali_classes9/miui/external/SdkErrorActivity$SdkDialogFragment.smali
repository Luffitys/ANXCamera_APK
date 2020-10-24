.class Lmiui/external/SdkErrorActivity$SdkDialogFragment;
.super Landroid/app/DialogFragment;
.source ""


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lmiui/external/SdkErrorActivity;


# direct methods
.method public constructor <init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->this$0:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method
