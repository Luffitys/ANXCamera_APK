.class Landroid/media/MediaFormat$UnprefixedKeySet;
.super Landroid/media/MediaFormat$FilteredMappedKeySet;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnprefixedKeySet"
.end annotation


# instance fields
.field private mPrefix:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;-><init>(Landroid/media/MediaFormat;)V

    iput-object p2, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected keepKey(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat$UnprefixedKeySet;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected mapItemToKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
