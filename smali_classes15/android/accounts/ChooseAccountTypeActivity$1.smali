.class Landroid/accounts/ChooseAccountTypeActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseAccountTypeActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseAccountTypeActivity;)V
    .registers 2

    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    # getter for: Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/accounts/ChooseAccountTypeActivity;->access$000(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v1, v1, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    # invokes: Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/accounts/ChooseAccountTypeActivity;->access$100(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    return-void
.end method
