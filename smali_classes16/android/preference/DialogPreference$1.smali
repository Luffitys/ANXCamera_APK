.class Landroid/preference/DialogPreference$1;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/DialogPreference;
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

    iput-object p1, p0, Landroid/preference/DialogPreference$1;->this$0:Landroid/preference/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/preference/DialogPreference$1;->this$0:Landroid/preference/DialogPreference;

    # getter for: Landroid/preference/DialogPreference;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Landroid/preference/DialogPreference;->access$000(Landroid/preference/DialogPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
