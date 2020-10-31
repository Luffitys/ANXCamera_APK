.class public Lmiui/cta/invoker/CTAActivityInvoker;
.super Ljava/lang/Object;
.source "CTAActivityInvoker.java"

# interfaces
.implements Lmiui/extension/invoker/Invoker;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityInvoker"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const-string v0, "onCreate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lmiui/cta/CTAManager;->showAgreementIfNeed(Landroid/app/Activity;)V

    goto :goto_27

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityInvoker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method
