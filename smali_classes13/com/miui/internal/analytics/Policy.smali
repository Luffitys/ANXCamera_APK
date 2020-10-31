.class public abstract Lcom/miui/internal/analytics/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# instance fields
.field protected mParam:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract end()V
.end method

.method public abstract execute(Lcom/miui/internal/analytics/Event;)V
.end method

.method public abstract prepare()V
.end method

.method public setParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/analytics/Policy;->mParam:Ljava/lang/String;

    return-void
.end method
