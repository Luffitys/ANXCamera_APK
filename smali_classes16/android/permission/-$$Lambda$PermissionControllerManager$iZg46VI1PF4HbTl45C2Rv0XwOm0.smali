.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$iZg46VI1PF4HbTl45C2Rv0XwOm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$iZg46VI1PF4HbTl45C2Rv0XwOm0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$iZg46VI1PF4HbTl45C2Rv0XwOm0;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$grantOrUpgradeDefaultRuntimePermissions$23(Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method
