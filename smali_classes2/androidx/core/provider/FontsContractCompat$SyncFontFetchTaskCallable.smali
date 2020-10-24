.class final Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCacheId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mRequest:Landroidx/core/provider/FontRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mStyle:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mCacheId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mRequest:Landroidx/core/provider/FontRequest;

    iput p3, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mStyle:I

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 3

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mRequest:Landroidx/core/provider/FontRequest;

    iget v2, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mStyle:I

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->mCacheId:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;->call()Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object p0

    return-object p0
.end method
