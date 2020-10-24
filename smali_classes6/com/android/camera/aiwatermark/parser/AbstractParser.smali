.class public abstract Lcom/android/camera/aiwatermark/parser/AbstractParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractParser"


# instance fields
.field protected markItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field protected watermarkItems:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/aiwatermark/parser/AbstractParser;->watermarkItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/aiwatermark/parser/AbstractParser;->markItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void
.end method


# virtual methods
.method public parseByPattern(I)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/parser/AbstractParser;->parseXml()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/parser/AbstractParser;->parseJson()Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected abstract parseJson()Ljava/util/ArrayList;
.end method

.method protected abstract parseXml()Ljava/util/ArrayList;
.end method
