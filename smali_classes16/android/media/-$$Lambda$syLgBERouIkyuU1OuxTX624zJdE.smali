.class public final synthetic Landroid/media/-$$Lambda$syLgBERouIkyuU1OuxTX624zJdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaFormat$FilteredMappedKeySet;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$syLgBERouIkyuU1OuxTX624zJdE;->f$0:Landroid/media/MediaFormat$FilteredMappedKeySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/-$$Lambda$syLgBERouIkyuU1OuxTX624zJdE;->f$0:Landroid/media/MediaFormat$FilteredMappedKeySet;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
