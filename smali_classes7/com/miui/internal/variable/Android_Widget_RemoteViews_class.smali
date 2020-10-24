.class public abstract Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# static fields
.field protected static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field protected static final REMOTE_VIEWS_TEMPLATE_THEME:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lmiui/R$style;->Theme_DayNight_RemoteViews:I

    sput v0, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;->REMOTE_VIEWS_TEMPLATE_THEME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method
