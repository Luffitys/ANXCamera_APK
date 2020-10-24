.class public Lcom/xiaomi/stat/a/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lorg/json/JSONArray;

.field public b:Ljava/util/ArrayList;

.field public c:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/stat/a/k;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/xiaomi/stat/a/k;->b:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/xiaomi/stat/a/k;->c:Z

    return-void
.end method
