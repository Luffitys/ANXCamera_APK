.class Lmiui/animation/controller/FolmeState$1;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiui/animation/utils/StyleComposer$IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/controller/FolmeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/utils/StyleComposer$IInterceptor<",
        "Lmiui/animation/controller/IFolmeStateStyle;",
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
.method public bridge synthetic onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p3, [Lmiui/animation/controller/IFolmeStateStyle;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/controller/FolmeState$1;->onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiui/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiui/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;
    .registers 7

    array-length v0, p3

    if-lez v0, :cond_1c

    array-length v0, p2

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    aget-object v1, p3, v0

    aget-object v0, p2, v0

    invoke-interface {v1, v0}, Lmiui/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    :goto_10
    array-length v2, p3

    if-ge v1, v2, :cond_1b

    aget-object v2, p3, v1

    invoke-interface {v2, v0}, Lmiui/animation/controller/IFolmeStateStyle;->addState(Lmiui/animation/controller/AnimState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldIntercept(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
