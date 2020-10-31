.class public final synthetic Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/text/Layout$SelectionRectangleConsumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Path;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;->f$0:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final accept(FFFFI)V
    .registers 12

    iget-object v0, p0, Landroid/text/-$$Lambda$Layout$MzjK2UE2G8VG0asK8_KWY3gHAmY;->f$0:Landroid/graphics/Path;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V

    return-void
.end method
