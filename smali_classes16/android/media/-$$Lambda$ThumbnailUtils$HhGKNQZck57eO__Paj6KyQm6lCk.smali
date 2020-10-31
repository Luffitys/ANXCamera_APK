.class public final synthetic Landroid/media/-$$Lambda$ThumbnailUtils$HhGKNQZck57eO__Paj6KyQm6lCk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToIntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$ThumbnailUtils$HhGKNQZck57eO__Paj6KyQm6lCk;->f$0:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$ThumbnailUtils$HhGKNQZck57eO__Paj6KyQm6lCk;->f$0:Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->lambda$createAudioThumbnail$2(Ljava/util/function/ToIntFunction;Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
