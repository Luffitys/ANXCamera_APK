.class Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;
.super Ljava/lang/Object;
.source "PromptRestoreDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->configDialog(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity$1;->this$0:Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;

    invoke-virtual {v0}, Lmiui/autoinstall/config/activity/PromptRestoreDialogActivity;->finish()V

    return-void
.end method
