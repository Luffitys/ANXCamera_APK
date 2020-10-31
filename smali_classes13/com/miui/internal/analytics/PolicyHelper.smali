.class public Lcom/miui/internal/analytics/PolicyHelper;
.super Ljava/lang/Object;
.source "PolicyHelper.java"


# static fields
.field private static final SPLITTER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "PolicyHelper"


# instance fields
.field private mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder<",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/LastPolicy;

    const-string v2, "last"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/NormalPolicy;

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/CountPolicy;

    const-string v2, "count"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public end()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Policy;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/Policy;->end()V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    :try_start_7
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_41

    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Policy;

    move-object v0, v2

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    aget-object v2, v1, v3

    goto :goto_25

    :cond_23
    const-string v2, ""

    :goto_25
    if-nez v0, :cond_3e

    iget-object v3, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v3, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/analytics/Policy;

    move-object v0, v3

    if-eqz v0, :cond_41

    iget-object v3, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/internal/analytics/Policy;->prepare()V

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v2}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_7 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    goto :goto_4a

    :catch_42
    move-exception v1

    const-string v2, "PolicyHelper"

    const-string v3, "PatternSyntaxException catched when getPolicy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    return-object v0
.end method
