.class public Lcom/miui/internal/analytics/NormalPolicy;
.super Lcom/miui/internal/analytics/Policy;
.source "NormalPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "normal"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/analytics/Policy;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .registers 1

    return-void
.end method

.method public execute(Lcom/miui/internal/analytics/Event;)V
    .registers 2

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->dispatch()V

    return-void
.end method

.method public prepare()V
    .registers 1

    return-void
.end method
