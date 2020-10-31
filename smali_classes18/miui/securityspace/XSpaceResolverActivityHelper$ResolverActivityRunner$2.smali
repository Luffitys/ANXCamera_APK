.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .registers 2

    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x11090019

    if-ne v1, v2, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x3e7

    :goto_f
    # setter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I
    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$102(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;
    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$200(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;
    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$200(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x2

    :goto_31
    # setter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I
    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$302(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$400(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mKeyType:Ljava/lang/String;
    invoke-static {v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$500(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I
    invoke-static {v2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$300(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$XSpace;->setAskType(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_49
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$0:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    # getter for: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I
    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$100(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I

    move-result v1

    # invokes: Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V
    invoke-static {v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->access$600(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    return-void
.end method
