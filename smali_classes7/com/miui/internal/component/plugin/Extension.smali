.class public Lcom/miui/internal/component/plugin/Extension;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Extension;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/plugin/Extension;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Extension;->location:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/plugin/Extension;->name:Ljava/lang/String;

    return-void
.end method
