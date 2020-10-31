.class public Landroid/accounts/ChooseTypeAndAccountActivityInjector;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMiuiChooseAccountTypeActivity(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.miui.rom"

    const-string v1, "miui.accounts.MiuiChooseAccountTypeActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
