.class Lmiui/external/widget/Spinner$DialogPopup$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lmiui/external/widget/Spinner$DialogPopup;


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DialogPopup;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DialogPopup$1;->this$1:Lmiui/external/widget/Spinner$DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lmiui/external/widget/Spinner$DialogPopup$1;->this$1:Lmiui/external/widget/Spinner$DialogPopup;

    iget-object p0, p0, Lmiui/external/widget/Spinner$DialogPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {p0}, Lmiui/external/widget/Spinner;->access$200(Lmiui/external/widget/Spinner;)V

    return-void
.end method
