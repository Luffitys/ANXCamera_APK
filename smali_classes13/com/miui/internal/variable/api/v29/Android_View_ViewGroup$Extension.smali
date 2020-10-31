.class public Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;
.super Lcom/miui/internal/variable/api/AbstractExtension;
.source "Android_View_ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/api/AbstractExtension<",
        "Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;

    invoke-direct {v0}, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/api/AbstractExtension;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Extension;

    return-object v0
.end method
