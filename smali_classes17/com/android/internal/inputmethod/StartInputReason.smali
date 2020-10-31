.class public interface abstract annotation Lcom/android/internal/inputmethod/StartInputReason;
.super Ljava/lang/Object;
.source "StartInputReason.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACTIVATED_BY_IMMS:I = 0x8

.field public static final APP_CALLED_RESTART_INPUT_API:I = 0x4

.field public static final BOUND_TO_IMMS:I = 0x6

.field public static final CHECK_FOCUS:I = 0x5

.field public static final DEACTIVATED_BY_IMMS:I = 0x9

.field public static final SESSION_CREATED_BY_IME:I = 0xa

.field public static final UNBOUND_FROM_IMMS:I = 0x7

.field public static final UNSPECIFIED:I = 0x0

.field public static final WINDOW_FOCUS_GAIN:I = 0x1

.field public static final WINDOW_FOCUS_GAIN_REPORT_WITHOUT_CONNECTION:I = 0x3

.field public static final WINDOW_FOCUS_GAIN_REPORT_WITH_CONNECTION:I = 0x2
