.class Lmiui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderVsyncUpdaterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lmiui/maml/RenderVsyncUpdater;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/maml/RenderVsyncUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/RenderVsyncUpdater;-><init>(Lmiui/maml/RenderVsyncUpdater$1;)V

    sput-object v0, Lmiui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lmiui/maml/RenderVsyncUpdater;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
