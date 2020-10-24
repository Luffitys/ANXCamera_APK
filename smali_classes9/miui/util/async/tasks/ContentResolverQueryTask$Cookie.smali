.class public Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;


# direct methods
.method public constructor <init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->pause()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->resume()V

    return-void
.end method
