.class public Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;
.super Lcom/miui/internal/variable/api/AbstractExtension;
.source "Android_Widget_AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/api/AbstractExtension<",
        "Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;

    invoke-direct {v0}, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/api/AbstractExtension;-><init>()V

    return-void
.end method

.method public static get()Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;
    .registers 1

    sget-object v0, Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;->INSTANCE:Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSpinner$Extension;

    return-object v0
.end method
