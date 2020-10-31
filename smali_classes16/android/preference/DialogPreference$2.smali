.class Landroid/preference/DialogPreference$2;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/DialogPreference;


# direct methods
.method constructor <init>(Landroid/preference/DialogPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/DialogPreference$2;->this$0:Landroid/preference/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Landroid/preference/DialogPreference$2;->this$0:Landroid/preference/DialogPreference;

    # invokes: Landroid/preference/DialogPreference;->removeDismissCallbacks()V
    invoke-static {v0}, Landroid/preference/DialogPreference;->access$100(Landroid/preference/DialogPreference;)V

    return-void
.end method
