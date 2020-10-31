.class public final synthetic Landroid/widget/-$$Lambda$RemoteViewsAdapter$-xHEGE7CkOWJ8u7GAjsH_hc-iiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$RemoteViewsAdapter$-xHEGE7CkOWJ8u7GAjsH_hc-iiA;->f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$$Lambda$RemoteViewsAdapter$-xHEGE7CkOWJ8u7GAjsH_hc-iiA;->f$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->lambda$saveRemoteViewsCache$0(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    return-void
.end method
