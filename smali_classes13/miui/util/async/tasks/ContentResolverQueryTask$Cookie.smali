.class public Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
.super Ljava/lang/Object;
.source "ContentResolverQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/ContentResolverQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cookie"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;


# direct methods
.method public constructor <init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V
    .registers 2

    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->pause()V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->resume()V

    return-void
.end method
