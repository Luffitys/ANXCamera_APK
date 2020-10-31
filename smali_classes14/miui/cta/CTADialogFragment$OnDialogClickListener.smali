.class Lmiui/cta/CTADialogFragment$OnDialogClickListener;
.super Ljava/lang/Object;
.source "CTADialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cta/CTADialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cta/CTADialogFragment;


# direct methods
.method private constructor <init>(Lmiui/cta/CTADialogFragment;)V
    .registers 2

    iput-object p1, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/cta/CTADialogFragment;Lmiui/cta/CTADialogFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/cta/CTADialogFragment$OnDialogClickListener;-><init>(Lmiui/cta/CTADialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    invoke-static {}, Lmiui/cta/CTAManager;->getInstance()Lmiui/cta/CTAManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-virtual {v1}, Lmiui/cta/CTADialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/cta/CTAManager;->onAccept(Landroid/app/Activity;)V

    goto :goto_19

    :cond_11
    const/4 v0, -0x2

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lmiui/cta/CTADialogFragment$OnDialogClickListener;->this$0:Lmiui/cta/CTADialogFragment;

    invoke-virtual {v0, p1}, Lmiui/cta/CTADialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    :cond_19
    :goto_19
    return-void
.end method
