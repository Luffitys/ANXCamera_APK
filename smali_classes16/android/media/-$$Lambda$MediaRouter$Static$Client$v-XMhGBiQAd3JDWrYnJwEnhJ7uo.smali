.class public final synthetic Landroid/media/-$$Lambda$MediaRouter$Static$Client$v-XMhGBiQAd3JDWrYnJwEnhJ7uo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter$Static$Client;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$v-XMhGBiQAd3JDWrYnJwEnhJ7uo;->f$0:Landroid/media/MediaRouter$Static$Client;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$v-XMhGBiQAd3JDWrYnJwEnhJ7uo;->f$0:Landroid/media/MediaRouter$Static$Client;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static$Client;->lambda$onRestoreRoute$1$MediaRouter$Static$Client()V

    return-void
.end method
