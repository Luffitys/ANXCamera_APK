.class Lmiui/telephony/PhoneDebug$2;
.super Landroid/database/ContentObserver;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/PhoneDebug;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p2, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/telephony/PhoneDebug$2;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "phone_debug_flag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const-string v0, "debug.miui.phone"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    move v2, v1

    :cond_15
    sput-boolean v2, Lmiui/telephony/PhoneDebug;->VDBG:Z

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange VDBG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneDebug"

    invoke-static {v1, v0}, Lmiui/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    # getter for: Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    # getter for: Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/PhoneDebug$Listener;

    invoke-interface {v1}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    goto :goto_41

    :cond_51
    return-void
.end method
