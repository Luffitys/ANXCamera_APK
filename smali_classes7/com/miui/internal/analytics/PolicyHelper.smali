.class public Lcom/miui/internal/analytics/PolicyHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SPLITTER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "PolicyHelper"


# instance fields
.field private mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

.field private mPolicy:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

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

    iget-object p0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v0, Lcom/miui/internal/analytics/CountPolicy;

    const-string v1, "count"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public end()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Policy;

    invoke-virtual {v1}, Lcom/miui/internal/analytics/Policy;->end()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Policy;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v1, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/analytics/Policy;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object p0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/internal/analytics/Policy;->prepare()V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string p1, "PolicyHelper"

    const-string v0, "PatternSyntaxException catched when getPolicy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-object v1
.end method
