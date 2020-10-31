.class Lmiui/animation/utils/StyleComposer$1;
.super Ljava/lang/Object;
.source "StyleComposer.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiui/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$interceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

.field final synthetic val$interfaceClz:Ljava/lang/Class;

.field final synthetic val$styles:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiui/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/utils/StyleComposer$1;->val$interceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    iput-object p2, p0, Lmiui/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    iput-object p3, p0, Lmiui/animation/utils/StyleComposer$1;->val$interfaceClz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/animation/utils/StyleComposer$1;->val$interceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    if-eqz v1, :cond_14

    invoke-interface {v1, p2, p3}, Lmiui/animation/utils/StyleComposer$IInterceptor;->shouldIntercept(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmiui/animation/utils/StyleComposer$1;->val$interceptor:Lmiui/animation/utils/StyleComposer$IInterceptor;

    iget-object v2, p0, Lmiui/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    invoke-interface {v1, p2, p3, v2}, Lmiui/animation/utils/StyleComposer$IInterceptor;->onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_48

    :cond_14
    iget-object v1, p0, Lmiui/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    :try_start_1c
    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_22

    move-object v0, v5

    goto :goto_45

    :catch_22
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to invoke "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    const-string v8, "StyleComposer"

    invoke-static {v8, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_48
    :goto_48
    if-eqz v0, :cond_5a

    iget-object v1, p0, Lmiui/animation/utils/StyleComposer$1;->val$styles:[Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_5a

    iget-object v1, p0, Lmiui/animation/utils/StyleComposer$1;->val$interfaceClz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5a
    return-object v0
.end method
