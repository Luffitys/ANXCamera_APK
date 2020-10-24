.class public Lmiui/util/async/tasks/CursorTask;
.super Lmiui/util/async/tasks/ContentResolverQueryTask;
.source ""


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiui/util/async/tasks/ContentResolverQueryTask;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/database/Cursor;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->query()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/CursorTask;->doLoad()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
