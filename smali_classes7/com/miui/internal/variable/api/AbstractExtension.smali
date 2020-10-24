.class public abstract Lcom/miui/internal/variable/api/AbstractExtension;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mExtension:Lcom/miui/internal/variable/api/Overridable;

.field private mOriginal:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindOriginal(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getExtension()Lcom/miui/internal/variable/api/Overridable;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    return-object p0
.end method

.method public setExtension(Lcom/miui/internal/variable/api/Overridable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    iget-object p0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
