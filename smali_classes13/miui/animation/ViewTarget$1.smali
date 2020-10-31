.class Lmiui/animation/ViewTarget$1;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Lmiui/animation/ITargetCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/ITargetCreator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTarget(Landroid/view/View;)Lmiui/animation/IAnimTarget;
    .registers 4

    new-instance v0, Lmiui/animation/ViewTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/animation/ViewTarget;-><init>(Landroid/view/View;Lmiui/animation/ViewTarget$1;)V

    return-object v0
.end method

.method public bridge synthetic createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/ViewTarget$1;->createTarget(Landroid/view/View;)Lmiui/animation/IAnimTarget;

    move-result-object p1

    return-object p1
.end method
