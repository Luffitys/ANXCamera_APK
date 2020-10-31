.class public final Landroid/service/controls/templates/StatelessTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "StatelessTemplate.java"


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTemplateType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method
