.class Landroid/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    return-void
.end method

.method public onBindView(Landroid/preference/Preference;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->originalOnBindView(Landroid/view/View;)V

    return-void
.end method
